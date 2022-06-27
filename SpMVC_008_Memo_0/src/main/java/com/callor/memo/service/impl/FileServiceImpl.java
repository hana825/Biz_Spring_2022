package com.callor.memo.service.impl;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.callor.memo.model.ImagesVO;
import com.callor.memo.service.FileUpService;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Service("fileService")
public class FileServiceImpl implements FileUpService {
	
	private final String upLoadFolder;
	public FileServiceImpl(String upLoadFolder) {
		this.upLoadFolder = upLoadFolder;
	}

	@Override
	public String fileUp(MultipartFile file) throws Exception {
		if(file == null) {
			return null;
		}
		File dir = new File(upLoadFolder);
		if(!dir.exists()) {
			dir.mkdirs();
		}
		
		String fileName = file.getOriginalFilename();
		
		// UUID 문자열 생성
		String strUUID = UUID.randomUUID().toString();
		
		// 파일이름 변경해서 업로드하는거!
		fileName = String.format("%s-%s", strUUID, fileName);
		log.debug("변경된 파일이름 {}", fileName);
		
		File upLoadFile = new File(upLoadFolder, fileName);
		file.transferTo(upLoadFile);
		return fileName;
	}

	@Override
	public List<ImagesVO> filesUp(MultipartHttpServletRequest files) throws Exception {
		// 업로드된 여러 개의 파일정보를 fileList에 담기
		List<MultipartFile> fileList = files.getFiles("mFile");
		
		// DB insert하기 위한 리스트를 만들기 위하여 생성
		List<ImagesVO> retFiles= new ArrayList<>();
		
		for(MultipartFile file : fileList) {
			String originName = file.getOriginalFilename();
			String uuName = this.fileUp(file);
			
			ImagesVO fileVO = ImagesVO.builder().i_originalName(originName).i_imageName(uuName).build();
			retFiles.add(fileVO);
		}
		
		return retFiles;
	}

	@Override
	public boolean fileDelete(String filename) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

}
