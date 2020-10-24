.class public abstract Lcom/android/camera/resource/BaseResourceList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/resource/BaseResourceUpdatable;


# static fields
.field public static final RESOURCE_TYPE_FILM:I = 0x3

.field public static final RESOURCE_TYPE_TM_MUSIC:I = 0x2

.field public static final RESOURCE_TYPE_VV:I = 0x1


# instance fields
.field protected transient departed:Z

.field private mResourceList:Ljava/util/List;

.field private mResourceType:I

.field public mVerified:Z

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/resource/BaseResourceList;->mResourceList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected addItem(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/resource/BaseResourceList;->mResourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/resource/BaseResourceList;->parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/resource/BaseResourceList;->mResourceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public compareAndMarkDeparted(Lcom/android/camera/resource/BaseResourceList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/resource/BaseResourceList;->version:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/camera/resource/BaseResourceList;->version:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/resource/BaseResourceList;->setDeparted()V

    :cond_0
    return-void
.end method

.method public bridge synthetic compareAndMarkDeparted(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/resource/BaseResourceList;

    invoke-virtual {p0, p1}, Lcom/android/camera/resource/BaseResourceList;->compareAndMarkDeparted(Lcom/android/camera/resource/BaseResourceList;)V

    return-void
.end method

.method public createResourcesList(Lorg/json/JSONObject;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/camera/resource/BaseResourceList;->getItemJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/camera/resource/BaseResourceList;->addItem(Lorg/json/JSONObject;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public getItem(I)Lcom/android/camera/resource/BaseResourceItem;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/resource/BaseResourceList;->mResourceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/resource/BaseResourceItem;

    return-object p0
.end method

.method public getItemById(Ljava/lang/String;)Lcom/android/camera/resource/BaseResourceItem;
    .locals 2

    iget-object p0, p0, Lcom/android/camera/resource/BaseResourceList;->mResourceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/resource/BaseResourceItem;

    iget-object v1, v0, Lcom/android/camera/resource/BaseResourceItem;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getItemJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
.end method

.method public abstract getLocalVersion()Ljava/lang/String;
.end method

.method public getResourceList()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/resource/BaseResourceList;->mResourceList:Ljava/util/List;

    return-object p0
.end method

.method public abstract getResourceType()I
.end method

.method public getSize()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/resource/BaseResourceList;->mResourceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public isDeparted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/resource/BaseResourceList;->departed:Z

    return p0
.end method

.method public abstract parseInitialData(Lorg/json/JSONObject;)V
.end method

.method public abstract parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/resource/BaseResourceItem;
.end method

.method public setDeparted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/resource/BaseResourceList;->departed:Z

    return-void
.end method

.method public abstract setLocalVersion(Ljava/lang/String;)V
.end method
