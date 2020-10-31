.class public Landroid/inputmethodservice/ClipboardContentModel;
.super Ljava/lang/Object;
.source "ClipboardContentModel.java"


# instance fields
.field private content:Ljava/lang/String;

.field private time:J

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/ClipboardContentModel;->content:Ljava/lang/String;

    iput p2, p0, Landroid/inputmethodservice/ClipboardContentModel;->type:I

    iput-wide p3, p0, Landroid/inputmethodservice/ClipboardContentModel;->time:J

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Landroid/inputmethodservice/ClipboardContentModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Landroid/inputmethodservice/ClipboardContentModel;

    invoke-direct {v0}, Landroid/inputmethodservice/ClipboardContentModel;-><init>()V

    const-string v1, "content"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/ClipboardContentModel;->setContent(Ljava/lang/String;)V

    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/ClipboardContentModel;->setType(I)V

    const-string/jumbo v1, "time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/ClipboardContentModel;->setTime(J)V

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/ClipboardContentModel;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Landroid/inputmethodservice/ClipboardContentModel;->time:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/inputmethodservice/ClipboardContentModel;->type:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/ClipboardContentModel;->content:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .registers 3

    iput-wide p1, p0, Landroid/inputmethodservice/ClipboardContentModel;->time:J

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Landroid/inputmethodservice/ClipboardContentModel;->type:I

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Landroid/inputmethodservice/ClipboardContentModel;->content:Ljava/lang/String;

    const-string v2, "content"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v1, p0, Landroid/inputmethodservice/ClipboardContentModel;->type:I

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-wide v1, p0, Landroid/inputmethodservice/ClipboardContentModel;->time:J

    const-string/jumbo v3, "time"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method
