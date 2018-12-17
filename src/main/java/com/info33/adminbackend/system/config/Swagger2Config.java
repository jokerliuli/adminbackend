package com.info33.adminbackend.system.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 *
 * Swagger2Config
 * 自动生成api在线文档
 */
@Configuration
@EnableSwagger2
public class Swagger2Config {

    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                //扫描路径
                .apis(RequestHandlerSelectors.basePackage("com.info33.adminbackend"))
                .paths(PathSelectors.any())
                .build();
    }



    //构建 api文档的详细信息函数,注意这里的注解引用的是哪个
    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                //页面标题
                .title("Demo的api文档")
                //创建人
                .contact(new Contact("alex","com.alex.myblog","1074199421@qq.com"))
                //版本号
                .version("1.0")
                //描述
                .description("Demo的api文档")
                .build();
    }
}