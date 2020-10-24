.class public interface abstract Lcom/android/camera/db/provider/DbProvider$providerDb;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract endItemAndInsert(Ljava/lang/Object;J)J
.end method

.method public abstract generateItem(J)Ljava/lang/Object;
.end method

.method public abstract getAllItems()Ljava/util/List;
.end method

.method public abstract getCount()J
.end method

.method public abstract getItemByMediaId(Ljava/lang/Long;)Ljava/lang/Object;
.end method

.method public abstract getItemByPath(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getItemWithExistedQuery(Lorg/greenrobot/greendao/query/Query;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getLastItem()Ljava/lang/Object;
.end method

.method public abstract removeItem(Ljava/lang/Object;)V
.end method

.method public abstract updateItem(Ljava/lang/Object;)V
.end method
