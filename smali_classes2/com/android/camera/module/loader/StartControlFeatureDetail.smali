.class public Lcom/android/camera/module/loader/StartControlFeatureDetail;
.super Ljava/lang/Object;
.source "StartControlFeatureDetail.java"


# instance fields
.field private fragmentAlias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;"
        }
    .end annotation
.end field

.field private interceptorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/module/interceptor/BaseModuleInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private topConfigItems:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFragmentInfo(ILjava/lang/String;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->fragmentAlias:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->fragmentAlias:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->fragmentAlias:Ljava/util/List;

    new-instance v0, Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-direct {v0, p1}, Lcom/android/camera/fragment/BaseFragmentOperation;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->featureWith(Ljava/lang/String;)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInterceptor(Lcom/android/camera/module/interceptor/BaseModuleInterceptor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->interceptorList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->interceptorList:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->interceptorList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFragmentAlias()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->fragmentAlias:Ljava/util/List;

    return-object p0
.end method

.method public getInterceptorList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/module/interceptor/BaseModuleInterceptor;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->interceptorList:Ljava/util/List;

    return-object p0
.end method

.method public getTopConfigItems()[I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->topConfigItems:[I

    return-object p0
.end method

.method public varargs setTopConfigItems([I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/loader/StartControlFeatureDetail;->topConfigItems:[I

    return-void
.end method
