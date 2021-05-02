package votingsystem.domain;

public class Vote {
	private String username,votes;
	private int id;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	int author1,author2,author3,author4;

	public int getAuthor1() {
		return author1;
	}

	public void setAuthor1(int author1) {
		this.author1 = author1;
	}

	public int getAuthor2() {
		return author2;
	}

	public void setAuthor2(int author2) {
		this.author2 = author2;
	}

	public int getAuthor3() {
		return author3;
	}

	public void setAuthor3(int author3) {
		this.author3 = author3;
	}

	public int getAuthor4() {
		return author4;
	}

	public void setAuthor4(int author4) {
		this.author4 = author4;
	}

	public Vote() {
		// TODO Auto-generated constructor stub
	}

	public String getVotes() {
		return votes;
	}

	public void setVotes(String votes) {
		this.votes = votes;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}
