package ezen.dteam.kobis;

import java.util.HashMap;

public interface ObjectMapper {

	HashMap<String, Object> readValue(String dailyResponse, Class<HashMap> class1);

}
