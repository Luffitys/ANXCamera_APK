.class public abstract Lcom/android/camera/resource/BaseResourceList;
.super Ljava/lang/Object;
.source "BaseResourceList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/resource/BaseResourceList$ResourceType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/camera/resource/BaseResourceItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final RESOURCE_TYPE_TM_MUSIC:I = 0x2

.field public static final RESOURCE_TYPE_VV:I = 0x1


# instance fields
.field private mResourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

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
.method protected addItem(Lorg/json/JSONObject;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/resource/BaseResourceList;->parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/resource/BaseResourceList;->mResourceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
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
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/resource/BaseResourceList;->addItem(Lorg/json/JSONObject;I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public getItem(I)Lcom/android/camera/resource/BaseResourceItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/resource/BaseResourceList;->mResourceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/resource/BaseResourceItem;

    return-object p0
.end method

.method public abstract getItemJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
.end method

.method public abstract getLocalVersion()Ljava/lang/String;
.end method

.method public getResourceList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

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

.method public abstract parseInitialData(Lorg/json/JSONObject;)V
.end method

.method public abstract parseSingleItem(Lorg/json/JSONObject;I)Lcom/android/camera/resource/BaseResourceItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "I)TT;"
        }
    .end annotation
.end method

.method public abstract setLocalVersion(Ljava/lang/String;)V
.end method
