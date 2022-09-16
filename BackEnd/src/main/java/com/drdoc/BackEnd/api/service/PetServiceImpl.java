package com.drdoc.BackEnd.api.service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.stereotype.Service;

import com.drdoc.BackEnd.api.domain.Kind;
import com.drdoc.BackEnd.api.domain.Pet;
import com.drdoc.BackEnd.api.domain.User;
import com.drdoc.BackEnd.api.domain.dto.PetDetailDto;
import com.drdoc.BackEnd.api.domain.dto.PetListDto;
import com.drdoc.BackEnd.api.domain.dto.PetRegisterRequestDto;
import com.drdoc.BackEnd.api.repository.PetRepository;
import com.drdoc.BackEnd.api.repository.PetKindRepository;
import com.drdoc.BackEnd.api.repository.UserRepository;

@Service
public class PetServiceImpl implements PetService{
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private PetKindRepository petTypeRepository;
	
	@Autowired
	private PetRepository petRepository;
	
	@Override
	@Transactional
	public void registerPet(String userId, PetRegisterRequestDto petRegisterRequestDto) {
		User user = userRepository.findByMemberId(userId)
				.orElseThrow(() -> new IllegalArgumentException("가입하지 않은 계정입니다."));
		Kind kind = petTypeRepository.findById(petRegisterRequestDto.getKind_id())
				.orElseThrow(() -> new IllegalArgumentException("반려동물 품종 번호가 올바르지 않습니다."));;

		Pet pet = Pet.builder().user(user).kind(kind).species(petRegisterRequestDto.isSpecies())
				.name(petRegisterRequestDto.getName()).gender(petRegisterRequestDto.getGender())
				.neutralize(petRegisterRequestDto.isNeutralize()).birth(petRegisterRequestDto.getBirth())
				.weight(petRegisterRequestDto.getWeight()).animalPic(petRegisterRequestDto.getAnimal_pic())
				.death(petRegisterRequestDto.isDeath()).diseases(petRegisterRequestDto.getDiseases())
				.description(petRegisterRequestDto.getDescription()).build();
		petRepository.save(pet);
	}

	@Override
	public void modifyPet(int petId, String userId, PetRegisterRequestDto petModifyRequestDto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String getPetImage(int petId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deletePet(int petId, String userId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<PetListDto> getPetList(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PetDetailDto getPetDetail(int petId) {
		// TODO Auto-generated method stub
		return null;
	}




}
