package login.naman.registration;

public interface CustomerDao {

	public int insertCustomer(Customer c);
	public Customer getCustomer(String username, String pass);
	public int insertCourse(Customer c);
}
