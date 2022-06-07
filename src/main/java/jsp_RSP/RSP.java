package jsp_RSP;

public class RSP {
	public final static String[] arr = { "가위", "바위", "보" };
	private int rsp;

	public RSP() {
		this.rsp = (int) (Math.random() * 3);
	}

	public RSP(int rsp) {
		this.rsp = rsp;
	}

	public String getRSP() {
		return arr[this.rsp];
	}

	public String match(RSP pc) {
		String result = null;

		if (this.rsp == pc.rsp) {
			result = "비겼습니다";
		}
		if (this.rsp == 0) {
			if (pc.rsp == 1) {
				result = "당신이 졌습니다";
			} else if (pc.rsp == 2) {
				result = "당신이 이겼습니다";
			}
		}
		if (this.rsp == 1) {
			if (pc.rsp == 2) {
				result = "당신이 졌습니다";
			} else if (pc.rsp == 0) {
				result = "당신이 이겼습니다";
			}
		}
		if (this.rsp == 2) {
			if (pc.rsp == 0) {
				result = "당신이 졌습니다";
			} else if (pc.rsp == 1) {
				result = "당신이 이겼습니다";
			}
		}
		return result;
	}

	public String getImg() {
		String result = null;

		if (this.rsp == 0) {
			result = "image/ssissor.png";
		} else if (this.rsp == 1) {
			result = "image/rock.png";
		} else if (this.rsp == 2) {
			result = "image/paper.png";
		}
		return result;
	}

	public String getMatchImg(RSP pc) {
		String result = null;

		if (this.rsp == pc.rsp) {
			result = "image/draw.png";
		}
		if (this.rsp == 0) {
			if (pc.rsp == 1) {
				result = "image/lose.png";
			} else if (pc.rsp == 2) {
				result = "image/win.png";
			}
		}
		if (this.rsp == 1) {
			if (pc.rsp == 2) {
				result = "image/lose.png";
			} else if (pc.rsp == 0) {
				result = "image/win.png";
			}
		}
		if (this.rsp == 2) {
			if (pc.rsp == 0) {
				result = "image/lose.png";
			} else if (pc.rsp == 1) {
				result = "image/win.png";
			}
		}
		return result;
		
	}
}

