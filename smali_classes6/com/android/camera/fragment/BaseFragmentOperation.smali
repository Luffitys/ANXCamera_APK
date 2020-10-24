.class public Lcom/android/camera/fragment/BaseFragmentOperation;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OPERATE_HIDE_CURRENT:I = 0x7

.field public static final OPERATE_POP_AND_CLEAR_OTHERS:I = 0x5

.field public static final OPERATE_PUSH:I = 0x4

.field public static final OPERATE_REMOVE:I = 0x2

.field public static final OPERATE_REMOVE_CURRENT:I = 0x3

.field public static final OPERATE_REPLACE:I = 0x1

.field public static final OPERATE_SHOW:I = 0x6

.field public static final OPERATE_UNKNOWN:I = -0x1


# instance fields
.field public containerViewId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field public operateType:I

.field public pendingFragmentAlias:Ljava/lang/String;

.field public pendingFragmentInfo:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    return-void
.end method

.method private checkOperation()V
    .locals 1

    iget p0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    if-gtz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "already set!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    new-instance v0, Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/BaseFragmentOperation;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public featureWith(ILjava/lang/String;)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    iput-object p2, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    return-object p0
.end method

.method public hideCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    return-object p0
.end method

.method public popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    return-object p0
.end method

.method public push(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    return-object p0
.end method

.method public remove(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    return-object p0
.end method

.method public removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    return-object p0
.end method

.method public replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    return-object p0
.end method

.method public saveWith(Lcom/android/camera/fragment/BaseFragmentOperation;)Z
    .locals 2

    iget v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    iget v1, p1, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    iget v1, p1, Lcom/android/camera/fragment/BaseFragmentOperation;->containerViewId:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    iget v1, p1, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    if-eqz p0, :cond_1

    iget-object p1, p1, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public show(I)Lcom/android/camera/fragment/BaseFragmentOperation;
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->checkOperation()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    iput p1, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    return-object p0
.end method
