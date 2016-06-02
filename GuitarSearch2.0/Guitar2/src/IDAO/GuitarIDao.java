package IDAO;

import dao.GuitarDao;
import entity.Inventory;

public class GuitarIDao {
	public static Inventory inventory()
	{
		return GuitarDao.inventory();
	}
}
