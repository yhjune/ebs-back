package efub.ebs;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

import javax.sql.DataSource;
import java.util.List;

@SpringBootApplication
public class EbsApplication {

	public static void main(String[] args) {
		SpringApplication.run(EbsApplication.class, args);
	}

	/*
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception{
		SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
		sessionFactory.setDataSource(dataSource);

		Resource res = new PathMatchingResourcePatternResolver().getResource("mappers/UserMapper.xml"); //mappers/UserMapper.xml
		sessionFactory.setMapperLocations(res);

		return sessionFactory.getObject();
	}
	 */
}
