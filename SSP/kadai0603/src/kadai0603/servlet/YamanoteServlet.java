package kadai0603.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class YamanoteServlet
 */
@WebServlet("/Yamanote")
public class YamanoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public YamanoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String rideon =request.getParameter("Rideon");
		String getdown = request.getParameter("Getdown");

		HttpSession session = request.getSession();
		session.setAttribute("on", rideon);
		session.setAttribute("down", getdown);

		RequestDispatcher rd = request.getRequestDispatcher("/keisan.jsp");
		rd.forward(request, response);
	}

	//ここにArrayListの初期化
//	ArrayList<Untin> arrUntin = new ArrayList<>();

//	@Override
//	public void init() throws ServletException {
//		// TODO 自動生成されたメソッド・スタブ
//		super.init();
//
//		//ここにpassword.txtを開いて、1行ずつ読み込み、ArrayListに格納する
//        BufferedReader br = null;
//        try {
//        	//テキストファイルを開く作業
//            br = new BufferedReader(new InputStreamReader(new FileInputStream("C:/Users/ca/SSP/kadai0603/eki.txt")));
//
//        //固定テンプレ外（コード変更は主に↓だけ）
//            String line;
//            while ((line = br.readLine()) != null) {//ファイル終端まで読み出す
//                System.out.println(line);
//                //substring()メソッド、指定したインデックスで文字列を分割
//                //indexOf()メソッド、指定した文字のインデックスを取得
//                String[] ekisplit = line.split(",");
//                int ekiNo = Integer.parseInt(ekisplit[0]);
//                double ekiDist = Double.parseDouble(ekisplit[2]);
//                arrUntin.add(new Untin(ekiNo,ekisplit[1],ekiDist));
//            }
//        //固定テンプレ外（コード変更は主に↑だけ）
//        } catch (FileNotFoundException ex) {//存在しないファイル名を指定した時の例外
//            System.out.println(ex);
//        } catch (IOException ex) {//一般的なIOアクセス時の例外
//            System.out.println(ex);
//        } finally {//例外が発生してもしなくても最後に必ず実行する(非メモリデバイスの終端作業(close)を行うために使う)
//            if (br != null) {//txtファイルのオープンが成功していたら
//                try {
//                    br.close();//クローズ、ファイルクローズに失敗した場合、非チェック例外(IOException)をスローする
//                } catch (IOException ex) {
//                    System.out.println(ex);
//                }//l32～l35まではセット
//            }
//        }

}
