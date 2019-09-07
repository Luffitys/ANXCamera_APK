.class public Lcom/android/camera/scene/MiAlgoAsdSceneProfile;
.super Ljava/lang/Object;
.source "MiAlgoAsdSceneProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/scene/MiAlgoAsdSceneProfile$MialgoAsdSceneClass;
    }
.end annotation


# static fields
.field public static final AI_SCENE_DETECTED:I = 0x3

.field public static final AI_SCENE_MODE_FOOD:I

.field private static final AI_SCENE_SHIFT:I = 0x3e8

.field public static final BACKLIT:I = 0x2

.field public static final DIRTY:I = 0x6

.field public static final MACRO:I = 0x7

.field public static final MI_ALGO_ASD_VERSION_2_0:F = 2.0f

.field public static final NONE:I = 0x0

.field public static final NON_SEMANTIC_CLASS:I = 0x1

.field public static final ON_TRIPOD:I = 0x4

.field public static final PORTRAIT:I = 0x1

.field public static final SEMANTICS_CLASS:I = 0x0

.field public static final STATE_CLASS:I = 0x2

.field public static final SUPER_NIGHT:I = 0x3

.field public static final ULTRA_WIDE:I

.field private static final ULTRA_WIDE_SCENE_SHIFT:I = 0x7d0

.field private static sSceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/scene/MiScene;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->generateCompatAiASDType(II)I

    move-result v1

    sput v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->AI_SCENE_MODE_FOOD:I

    const/4 v1, 0x2

    const/16 v2, 0x7d0

    invoke-static {v1, v2}, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->generateCompatAiASDType(II)I

    move-result v2

    sput v2, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->ULTRA_WIDE:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Lcom/android/camera/scene/MiScene;->type:I

    iget-object v4, v2, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    const v5, 0x7f0f0361

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v4, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v2

    iput v0, v2, Lcom/android/camera/scene/MiScene;->type:I

    iget-object v0, v2, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    const v4, 0x7f0f0363

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v0

    iput v1, v0, Lcom/android/camera/scene/MiScene;->type:I

    sget-object v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/camera/scene/MiScene;->type:I

    sget-object v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Lcom/android/camera/scene/MiScene;->type:I

    sget-object v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v0

    const/4 v1, 0x7

    iput v1, v0, Lcom/android/camera/scene/MiScene;->type:I

    iget-object v1, v0, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    const v2, 0x7f0f0360

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v0

    sget v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->AI_SCENE_MODE_FOOD:I

    iput v1, v0, Lcom/android/camera/scene/MiScene;->type:I

    sget-object v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/scene/MiScene;->create()Lcom/android/camera/scene/MiScene;

    move-result-object v0

    sget v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->ULTRA_WIDE:I

    iput v1, v0, Lcom/android/camera/scene/MiScene;->type:I

    sget-object v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearInitASDScenes()V
    .locals 3

    sget-object v0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/scene/MiScene;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/scene/MiScene;->setEnable(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/scene/MiScene;->isChange(F)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static generateCompatAiASDType(II)I
    .locals 0

    or-int/2addr p0, p1

    return p0
.end method

.method public static getSceneTipResId(II)I
    .locals 4

    const/4 v0, 0x0

    if-lez p0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/scene/MiScene;

    iget v3, v2, Lcom/android/camera/scene/MiScene;->type:I

    if-ne v3, p0, :cond_1

    iget-object v2, v2, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    sget-object p0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/scene/MiScene;

    iget-object p0, p0, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/scene/MiScene;

    iget-object p0, p0, Lcom/android/camera/scene/MiScene;->valueArray:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static isAlreadyTip()Z
    .locals 2

    sget-object v0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/scene/MiScene;

    invoke-virtual {v1}, Lcom/android/camera/scene/MiScene;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isCheckSceneEnable(II)Z
    .locals 0

    if-lez p0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSceneChange(II)Z
    .locals 3

    sget-object v0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/scene/MiScene;

    iget v2, v1, Lcom/android/camera/scene/MiScene;->type:I

    if-ne v2, p0, :cond_0

    int-to-float p0, p1

    invoke-virtual {v1, p0}, Lcom/android/camera/scene/MiScene;->isChange(F)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isTipEnable(I)Z
    .locals 3

    sget-object v0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/scene/MiScene;

    iget v2, v1, Lcom/android/camera/scene/MiScene;->type:I

    if-ne v2, p0, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/scene/MiScene;->isEnable()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static setTipEnable(IZ)V
    .locals 3

    sget-object v0, Lcom/android/camera/scene/MiAlgoAsdSceneProfile;->sSceneList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/scene/MiScene;

    iget v2, v1, Lcom/android/camera/scene/MiScene;->type:I

    if-ne v2, p0, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/camera/scene/MiScene;->setEnable(Z)V

    :cond_1
    return-void
.end method
