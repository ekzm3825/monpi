package kr.qusi.spring.http;

/**
 * 스프링 {@link org.springframework.http.MediaType} 에서 정의되지 않는 타입을
 * 추가로 정의함
 *
 * @author yongseoklee
 */

import org.springframework.http.MediaType;

public abstract class ExtendedMediaType {

    protected ExtendedMediaType() {

    }

    public static final MediaType APPLICATION_XLS;

    public static final String APPLICATION_XLS_VALUE = "application/vnd.ms-excel";

    public static final MediaType APPLICATION_XLSX;

    public static final String APPLICATION_XLSX_VALUE = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";

    static {
        APPLICATION_XLS = MediaType.parseMediaType(APPLICATION_XLS_VALUE);
        APPLICATION_XLSX = MediaType.parseMediaType(APPLICATION_XLSX_VALUE);
    }

}