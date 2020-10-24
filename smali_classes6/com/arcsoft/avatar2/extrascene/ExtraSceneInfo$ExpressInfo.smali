.class public Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final LOOP_BEGIN_FRAME:I = 0x1

.field public static final LOOP_END_FRAME:I = 0x2


# instance fields
.field final synthetic a:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

.field private b:[I

.field private c:Ljava/util/ArrayList;

.field private d:Z

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->a:Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->b:[I

    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->c:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->d:Z

    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->e:I

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->f:Z

    return-void
.end method


# virtual methods
.method public getExpressIndex()[I
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->b:[I

    return-object p0
.end method

.method public getExpressValue()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getLoopStatus()I
    .locals 0

    iget p0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->e:I

    return p0
.end method

.method public isLoopFrame()Z
    .locals 0

    iget-boolean p0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->d:Z

    return p0
.end method

.method public isPauseFrame()Z
    .locals 0

    iget-boolean p0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->f:Z

    return p0
.end method

.method public setExpressIndex([I)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->b:[I

    return-void
.end method

.method public setExpressValue(F)V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->c:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLoopFrame(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->d:Z

    return-void
.end method

.method public setLoopStatus(I)V
    .locals 0

    iput p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->e:I

    return-void
.end method

.method public setPauseStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/arcsoft/avatar2/extrascene/ExtraSceneInfo$ExpressInfo;->f:Z

    return-void
.end method
