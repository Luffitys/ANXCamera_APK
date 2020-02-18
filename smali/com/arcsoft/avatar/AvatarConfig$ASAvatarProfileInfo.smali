.class public Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProfileInfo;
.super Ljava/lang/Object;
.source "AvatarConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/avatar/AvatarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ASAvatarProfileInfo"
.end annotation


# instance fields
.field private eyeShape:I

.field private faceShape:I

.field private gender:I

.field private glassType:I

.field private hairColor:[B

.field private hairType:I

.field private hasFringe:I

.field private mouthShape:I

.field private noseShape:I

.field private skinColor:[B

.field private skinColorScale:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHairType()Ljava/lang/String;
    .locals 2

    iget p0, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProfileInfo;->hairType:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "unknow"

    goto :goto_0

    :pswitch_0
    const-string p0, "\u53cc\u9ebb\u82b1\u8fab"

    goto :goto_0

    :pswitch_1
    const-string p0, "\u53cc\u9a6c\u5c3e"

    goto :goto_0

    :pswitch_2
    const-string p0, "\u5377\u957f\u53d1"

    goto :goto_0

    :pswitch_3
    const-string p0, "\u76f4\u957f\u53d1"

    goto :goto_0

    :pswitch_4
    const-string p0, "\u5377\u4e2d\u53d1"

    goto :goto_0

    :pswitch_5
    const-string p0, "\u76f4\u4e2d\u53d1"

    goto :goto_0

    :pswitch_6
    const-string p0, "\u5377\u4e2d\u77ed\u53d1"

    goto :goto_0

    :pswitch_7
    const-string p0, "\u76f4\u4e2d\u77ed\u53d1"

    goto :goto_0

    :pswitch_8
    const-string p0, "\u54ea\u5412\u5934"

    goto :goto_0

    :pswitch_9
    const-string p0, "\u4e38\u5b50\u9a6c\u5c3e"

    goto :goto_0

    :pswitch_a
    const-string p0, "\u5377\u77ed\u53d1"

    goto :goto_0

    :pswitch_b
    const-string p0, "\u76f4\u77ed\u53d1"

    goto :goto_0

    :pswitch_c
    const-string p0, "\u5149\u5bf8\u5934"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hair Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHasFringe()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProfileInfo;->hasFringe:I

    if-nez p0, :cond_0

    const-string p0, "\u65e0"

    goto :goto_0

    :cond_0
    const-string p0, "\u6709"

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gender = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProfileInfo;->gender:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nfaceShape = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProfileInfo;->faceShape:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\neyeShape = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProfileInfo;->eyeShape:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmouthShape = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProfileInfo;->mouthShape:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nnoseShape = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProfileInfo;->noseShape:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nhairType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProfileInfo;->hairType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nhasFringe = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProfileInfo;->hasFringe:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nhairColor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProfileInfo;->hairColor:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nskinColor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProfileInfo;->skinColor:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nskinColorScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProfileInfo;->skinColorScale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nglassType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/arcsoft/avatar/AvatarConfig$ASAvatarProfileInfo;->glassType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
