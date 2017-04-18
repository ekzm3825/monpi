package com.dk.monpi.security;



import com.dk.monpi.model.Member;
import kr.qusi.spring.security.AbstractLoginManager;

/**                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              n
 * 로그인 매니저
 * 로그인 여부, 사용자 정보 관리
 *
 * @since 1.0.0
 * @author dk
 */
public class LoginManager extends AbstractLoginManager {

    /**
     * 사용자 정보 조회
     *
     * @return Member
     */
    public static Member getMember() {
        Object details = getDetails();
        if (details == null || !(details instanceof Member))
            return null;

        return (Member) details;
    }

    /**
     * 사용자 고유 번호 조회
     *
     * @return ID (고유번호)
     */
    public static Integer getId() {
        Member member = getMember();
        if (member == null)
            return null;

        return member.getId();
    }

    /**
     * 사용자 로그인 ID 조회
     *
     * @return 로그인 ID
     */
    public static String getLoginId() {
        Member member = getMember();
        if (member == null)
            return null;

        return member.getLogin_id();
    }

}
