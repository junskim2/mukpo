package user.domain;

public class UserVO {

   private String userId;
   private String userPass;
   private String userName;
   private String userTel;
   private String userBorn;
   private String userEmail;
   private String userPoint;
   private String userWithdrop;
   


   public UserVO() {}
   
   public UserVO(String userId, String userPass, String userName, String userTel, String userBorn, String userEmail) {
      super();
      this.userId = userId;
      this.userPass = userPass;
      this.userName = userName;
      this.userTel = userTel;
      this.userBorn = userBorn;
      this.userEmail = userEmail;
   }
   
   public String getUserId() {
      return userId;
   }
   public void setUserId(String userId) {
      this.userId = userId;
   }
   public String getUserPass() {
      return userPass;
   }
   public void setUserPass(String userPass) {
      this.userPass = userPass;
   }
   public String getUserName() {
      return userName;
   }
   public void setUserName(String userName) {
      this.userName = userName;
   }
   public String getUsertel() {
      return userTel;
   }
   public void setUsertel(String userTel) {
      this.userTel = userTel;
   }
   public String getUserborn() {
      return userBorn;
   }
   public void setUserborn(String userBorn) {
      this.userBorn = userBorn;
   }
   public String getUserEmail() {
      return userEmail;
   }
   public void setUserEmail(String userEmail) {
      this.userEmail = userEmail;
   }
   public String getUserPoint() {
      return userPoint;
   }
   public void setUserPoint(String userPoint) {
      this.userPoint = userPoint;
   }
   public String getUserWithdrop() {
      return userWithdrop;
   }
   public void setUserWithdrop(String userWithdrop) {
      this.userWithdrop = userWithdrop;
   }
   
   
}