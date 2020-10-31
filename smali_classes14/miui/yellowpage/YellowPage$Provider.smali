.class public Lmiui/yellowpage/YellowPage$Provider;
.super Ljava/lang/Object;
.source "YellowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# instance fields
.field private mId:I

.field private mSourceUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/YellowPage$Provider;
    .registers 4

    :try_start_0
    const-string v0, "provider"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "sourceUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmiui/yellowpage/YellowPage$Provider;

    invoke-direct {v2}, Lmiui/yellowpage/YellowPage$Provider;-><init>()V

    invoke-virtual {v2, v0}, Lmiui/yellowpage/YellowPage$Provider;->setId(I)Lmiui/yellowpage/YellowPage$Provider;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/yellowpage/YellowPage$Provider;->setSourceUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage$Provider;

    move-result-object v2
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v2

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 2

    iget v0, p0, Lmiui/yellowpage/YellowPage$Provider;->mId:I

    return v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage$Provider;->mSourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)Lmiui/yellowpage/YellowPage$Provider;
    .registers 2

    iput p1, p0, Lmiui/yellowpage/YellowPage$Provider;->mId:I

    return-object p0
.end method

.method public setSourceUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage$Provider;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage$Provider;->mSourceUrl:Ljava/lang/String;

    return-object p0
.end method
