using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ОООТехносервис.Classes
{
    public class Helper
    {
        //Объект для связи с БД
        public static Model.DBVakulenkoRequests413Entities DB { get; set; }
        //Объект-пользователь, вошедший в систему
        public static Model.User user;
    }
}
