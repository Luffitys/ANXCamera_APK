.class public Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final synthetic a:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->a:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->b:I

    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->c:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->d:Z

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->e:Z

    return-void
.end method


# virtual methods
.method public getBlendShape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->d:Z

    return p0
.end method

.method public getExpId()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->c:I

    return p0
.end method

.method public getHairId()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->b:I

    return p0
.end method

.method public getMask()Z
    .locals 0

    iget-boolean p0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->e:Z

    return p0
.end method

.method public setBlendShape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->d:Z

    return-void
.end method

.method public setExpId(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->c:I

    return-void
.end method

.method public setHairId(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->b:I

    return-void
.end method

.method public setMask(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->e:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHairId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExpId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bBlendShape = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bMask = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$HairMaskInfo;->e:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
