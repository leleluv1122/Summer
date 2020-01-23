package net.lele.demo;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
@MapperScan(value={"net.lele.demo.board.mapper"}) //mapper인터페이스를 인식할 수 있도록 설정
public class DemoApplication {

    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }

    /*
     * SqlSessionFactory 설정
     */
    @Bean
    public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception{

        SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();

        sessionFactory.setDataSource(dataSource);
        return sessionFactory.getObject();

    }
	/*
	 * //@bean : 스프링에 필요한 객체를 생성 //sqlSessionFactory() : Mybatis의 sqlsessionfactory를
	 * 반환해줌
	 * //스프링부트가 실행할 때 DataSource객체를 이 메서드 실행 시 주입해서 결과를 만들고,
	 * //그 결과를 스프링내 빈으로
	 * 사용하게 되낟ㅇ.
	 */
}