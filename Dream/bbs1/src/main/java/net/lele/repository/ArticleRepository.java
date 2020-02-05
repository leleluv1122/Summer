package net.lele.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;

import net.lele.domain.Article;
import net.lele.model.Option;
import net.lele.model.Pagination;

public interface ArticleRepository extends JpaRepository<Article, Integer> {

	Option[] searchBy = { new Option(0, "검색 없음"), new Option(1, "글쓴이"), new Option(2, "제목"), new Option(3, "본문") }; // sb변수에
																													// 담겨
																													// 액션메소드로
																													// 전달
	Option[] orderBy = { new Option(0, "최근 글"), new Option(1, "오래된 글"), new Option(2, "글쓴이") }; // ob로~_~

	@Autowired
	Sort[] sort = { Sort.by(Sort.Direction.DESC, "id"), Sort.by(Sort.Direction.ASC, "id"),
			Sort.by(Sort.Direction.ASC, "user_name") }; // ob랑 순서가 같아야된다

	public default List<Article> findAll(Pagination pagination) {
		Pageable pageable = PageRequest.of(pagination.getPg() - 1, pagination.getSz(), sort[pagination.getOb()]);

		Page<Article> page;
		int boardId = pagination.getBd();
		// 조회할 게시판의 id값이 Pagination 모델 객체의 bd멤버 변수에 담겨서 전달됨
		String searchText = pagination.getSt();
		// 사용자가 입력한 검색 문자열이 st멤버변수에 담겨서 전달됨
		switch (pagination.getSb()) { // 사용자가 선택한 검색조건이 담겨서 전달
		case 1:
			page = this.findByBoardIdAndUserName(boardId, searchText, pageable);
			break;
		case 2:
			page = this.findByBoardIdAndTitleContains(boardId, searchText, pageable);
			break;
		case 3:
			page = this.findByBoardIdAndBodyContains(boardId, searchText, pageable);
			break;
		default:
			page = this.findByBoardId(boardId, pageable);
			break;
		}
		pagination.setRecordCount((int) page.getTotalElements());
		return page.getContent();
	}

	public Page<Article> findByBoardId(int boardId, Pageable pageable);
	// boardId필드로 Article테이블을 검색
	// pageable객체에 담겨있는 정렬순서와 페이지번호가 적용되어, 조회결과 리턴

	public Page<Article> findByBoardIdAndUserName(int boardId, String name, Pageable pageable);
	// boardId 필드와 글쓴이 이름으로 Article 테이블을 검색한다
	// 검색할 문자열과 사용자 이름이 전체 일치해야 한다
	// Pageable 객체에 담겨있는 정렬순서와 페이지 번호가 적용되어, 조회결과가 리턴된다

	public Page<Article> findByBoardIdAndTitleContains(int boardId, String title, Pageable pageable);
	// boardId 필드와 게시글 제목으로 Article 테이블을 검색한다
	// 검색할 문자열이 제목에포함되어있는지 비교,
	// pageable객체에 담겨있는 정렬순서와 페이지번호가 적용되어, 조회결과 리턴

	public Page<Article> findByBoardIdAndBodyContains(int boardId, String body, Pageable pageable);
	// 본문에 ~~
}
