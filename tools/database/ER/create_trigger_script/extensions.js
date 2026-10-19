//拡張
var ext={
    "toFirst":function(array,func){
        for(var index in array){
            if(func(array[index]))return array[index];
        }
        return null;
      },
    "toWhere":function(array,func){//func->result bool,argment array[i]
        var result=new Array;
        for(var index in array){
            if(func(array[index]))result.add(array[index]);
        }
        return result;
        },
    "toAny":function(array,func){
        for(var index in array){
            if(func(array[index]))return true;
        }
        return false;
    },
    "toSelect":function(array,func){
        var result=new Array;
        for(var i in array){
            var funcResult=func(array[i]);
            if(funcResult != null)result.add(funcResult);
        }
        return result;
    },
    "tabs":function(e){
        var tabResults="";
        if(0>=e)return tabResults;
        for(var i=0;e>i;i++) tabResults+="    ";
        return tabResults;
    },
    "count":function(array){
        var count=0;
        for(var i in array){
            count++;
        }
        return count;
    },
    "enumrable":function(array,func){//function(arrayType,percentProgress)
        var len=ext.count(array);
        for(var index in array){
            var count=(index/len*100).toFixed();
            func(array[index],count);
        }
    },
    "join":function(array,grue){
        var len=ext.count(array);
        var result="";
        if(len ==0){
            return result;
        }

        for(var index in array){
            result+=array[index];
            if(len > index + 1){
                result+=grue;
            }
        }
        return result;
    }
};