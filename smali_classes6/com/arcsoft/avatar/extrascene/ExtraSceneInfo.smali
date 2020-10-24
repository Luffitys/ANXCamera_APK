.class public Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EXTRA_ANGELWINGS_NAME:Ljava/lang/String; = "AngelWings"

.field public static final EXTRA_CLOWNHAT_NAME:Ljava/lang/String; = "ClownHat"

.field public static final EXTRA_RABBITTEETH_NAME:Ljava/lang/String; = "RabbitTeeth"

.field public static final EXTRA_STATUS_AGAIN:I = 0x4

.field public static final EXTRA_STATUS_BEGIN:I = 0x1

.field public static final EXTRA_STATUS_END:I = 0x3

.field public static final EXTRA_STATUS_RUN:I = 0x2

.field public static final HEAD_PITCH_STATUS_DOWN:I = 0x2

.field public static final HEAD_PITCH_STATUS_NORMAL:I = 0x0

.field public static final HEAD_PITCH_STATUS_UP:I = 0x1

.field public static final LOOP_LAST_EXP_ID_STATUS:I = 0x2

.field public static final LOOP_NORAML_STATUS:I = 0x1

.field public static final LOOP_ONCE_STATUS:I = 0x3


# instance fields
.field private A:Ljava/util/ArrayList;

.field private B:[I

.field private C:[I

.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljava/util/ArrayList;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/ArrayList;

.field private l:Ljava/util/ArrayList;

.field private m:I

.field private n:I

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->a:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->b:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->c:I

    iput-boolean v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->d:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->e:Ljava/util/ArrayList;

    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->f:I

    iput-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->g:Ljava/lang/String;

    iput-object v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->h:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->j:Ljava/lang/String;

    iput-object v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->k:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->l:Ljava/util/ArrayList;

    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->m:I

    const/4 v4, 0x1

    iput v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->n:I

    iput-boolean v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->o:Z

    iput v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->p:I

    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->q:I

    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->r:I

    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->s:I

    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->t:I

    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->u:I

    iput v4, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->v:I

    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->w:I

    iput v2, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->x:I

    iput v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->y:I

    iput-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->z:Ljava/lang/String;

    iput-object v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->A:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->B:[I

    iput-object v3, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->C:[I

    return-void
.end method


# virtual methods
.method public getAccPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->z:Ljava/lang/String;

    return-object p0
.end method

.method public getDuration()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->f:I

    return p0
.end method

.method public getEmojiHelmetLeftRandomNum()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->u:I

    return p0
.end method

.method public getEmojiHelmetRightRandomNum()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->v:I

    return p0
.end method

.method public getExpCheckIdList()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getExpCheckValueList()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->l:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getExpCount()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->c:I

    return p0
.end method

.method public getExpIdInPut()[I
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->B:[I

    return-object p0
.end method

.method public getExpIdOutPut()[I
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->C:[I

    return-object p0
.end method

.method public getExpressInfoList()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getExtraStatus()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->n:I

    return p0
.end method

.method public getHairMaskInfoList()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->A:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getHeadPitchStatus()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->x:I

    return p0
.end method

.method public getHeadWear()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->b:I

    return p0
.end method

.method public getHeadWearColor()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->p:I

    return p0
.end method

.method public getLoopBeginFrameIndex()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->q:I

    return p0
.end method

.method public getLoopCount()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->s:I

    return p0
.end method

.method public getLoopEndFrameIndex()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->r:I

    return p0
.end method

.method public getLoopNum()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->t:I

    return p0
.end method

.method public getLoopType()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->m:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getNewHeadWearPathList()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getNewToothPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->j:Ljava/lang/String;

    return-object p0
.end method

.method public getOldHeadWearPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->g:Ljava/lang/String;

    return-object p0
.end method

.method public getOldToothPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->i:Ljava/lang/String;

    return-object p0
.end method

.method public getPauseIndex()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->y:I

    return p0
.end method

.method public getRandom()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->w:I

    return p0
.end method

.method public isNeedOutLine()Z
    .locals 0

    iget-boolean p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->d:Z

    return p0
.end method

.method public isOldHeadWearAcc()Z
    .locals 0

    iget-boolean p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->o:Z

    return p0
.end method

.method public setAccPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->z:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->f:I

    return-void
.end method

.method public setEmojiHelmetLeftRandomNum(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->u:I

    return-void
.end method

.method public setEmojiHelmetRightRandomNum(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->v:I

    return-void
.end method

.method public setExpCheckId([I)V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->k:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->k:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExpCheckValue([F)V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->l:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->l:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->l:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExpCount(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->c:I

    return-void
.end method

.method public setExpIdInPut([I)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->B:[I

    return-void
.end method

.method public setExpIdOutPut([I)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->C:[I

    return-void
.end method

.method public setExpressInfo(Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$ExpressInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->e:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setExtraStatus(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->n:I

    return-void
.end method

.method public setHairMaskInfo(Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo$HairMaskInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->A:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->A:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->A:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setHeadPitchStatus(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->x:I

    return-void
.end method

.method public setHeadWear(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->b:I

    return-void
.end method

.method public setHeadWearColor(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->p:I

    return-void
.end method

.method public setIsOldHeadWearAcc(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->o:Z

    return-void
.end method

.method public setLoopBeginFrameIndex(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->q:I

    return-void
.end method

.method public setLoopCount(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->s:I

    return-void
.end method

.method public setLoopEndFrameIndex(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->r:I

    return-void
.end method

.method public setLoopNum(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->t:I

    return-void
.end method

.method public setLoopType(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->m:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setNeedOutLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->d:Z

    return-void
.end method

.method public setNewHeadWearPath(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->h:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setNewToothPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->j:Ljava/lang/String;

    return-void
.end method

.method public setOldHeadWearPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->g:Ljava/lang/String;

    return-void
.end method

.method public setOldToothPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->i:Ljava/lang/String;

    return-void
.end method

.method public setPauseIndex(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->y:I

    return-void
.end method

.method public setRandom(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->w:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", headWear = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mNeedOutLine = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/arcsoft/avatar/extrascene/ExtraSceneInfo;->d:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", mExpressIndex = , mExpressValue = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
