.class public Lcom/bumptech/glide/manager/l;
.super Landroid/app/Fragment;
.source "RequestManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/l$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RMFragment"


# instance fields
.field private final aa:Lcom/bumptech/glide/manager/a;

.field private final ba:Lcom/bumptech/glide/manager/o;

.field private final ca:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/manager/l;",
            ">;"
        }
    .end annotation
.end field

.field private da:Lcom/bumptech/glide/m;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private ea:Lcom/bumptech/glide/manager/l;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private fa:Landroid/app/Fragment;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/manager/a;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/l;-><init>(Lcom/bumptech/glide/manager/a;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/manager/a;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/manager/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/bumptech/glide/manager/l$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/l$a;-><init>(Lcom/bumptech/glide/manager/l;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/l;->ba:Lcom/bumptech/glide/manager/o;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/l;->ca:Ljava/util/Set;

    iput-object p1, p0, Lcom/bumptech/glide/manager/l;->aa:Lcom/bumptech/glide/manager/a;

    return-void
.end method

.method private Oj()Landroid/app/Fragment;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/manager/l;->fa:Landroid/app/Fragment;

    :goto_1
    return-object v0
.end method

.method private Pj()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/manager/l;->ea:Lcom/bumptech/glide/manager/l;

    if-eqz v0, :cond_0

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/l;->b(Lcom/bumptech/glide/manager/l;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/manager/l;->ea:Lcom/bumptech/glide/manager/l;

    :cond_0
    return-void
.end method

.method private a(Lcom/bumptech/glide/manager/l;)V
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/manager/l;->ca:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Lcom/bumptech/glide/manager/l;)V
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/manager/l;->ca:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private d(Landroid/app/Fragment;)Z
    .locals 1
    .param p1    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    invoke-virtual {p0}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private f(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/bumptech/glide/manager/l;->Pj()V

    invoke-static {p1}, Lcom/bumptech/glide/c;->get(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/c;->Ff()Lcom/bumptech/glide/manager/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/manager/n;->e(Landroid/app/Activity;)Lcom/bumptech/glide/manager/l;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/manager/l;->ea:Lcom/bumptech/glide/manager/l;

    iget-object p1, p0, Lcom/bumptech/glide/manager/l;->ea:Lcom/bumptech/glide/manager/l;

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bumptech/glide/manager/l;->ea:Lcom/bumptech/glide/manager/l;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/manager/l;->a(Lcom/bumptech/glide/manager/l;)V

    :cond_0
    return-void
.end method


# virtual methods
.method O()Ljava/util/Set;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/manager/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/manager/l;->ea:Lcom/bumptech/glide/manager/l;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/manager/l;->ca:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/l;->ea:Lcom/bumptech/glide/manager/l;

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/manager/l;->ea:Lcom/bumptech/glide/manager/l;

    invoke-virtual {v1}, Lcom/bumptech/glide/manager/l;->O()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/manager/l;

    invoke-virtual {v2}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bumptech/glide/manager/l;->d(Landroid/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method P()Lcom/bumptech/glide/manager/a;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/manager/l;->aa:Lcom/bumptech/glide/manager/a;

    return-object p0
.end method

.method public Q()Lcom/bumptech/glide/m;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/manager/l;->da:Lcom/bumptech/glide/m;

    return-object p0
.end method

.method public R()Lcom/bumptech/glide/manager/o;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/manager/l;->ba:Lcom/bumptech/glide/manager/o;

    return-object p0
.end method

.method a(Landroid/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/manager/l;->fa:Landroid/app/Fragment;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/l;->f(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/bumptech/glide/m;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/m;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/manager/l;->da:Lcom/bumptech/glide/m;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/manager/l;->f(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x5

    const-string v0, "RMFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Unable to register fragment with root"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/l;->aa:Lcom/bumptech/glide/manager/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/a;->onDestroy()V

    invoke-direct {p0}, Lcom/bumptech/glide/manager/l;->Pj()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    invoke-direct {p0}, Lcom/bumptech/glide/manager/l;->Pj()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object p0, p0, Lcom/bumptech/glide/manager/l;->aa:Lcom/bumptech/glide/manager/a;

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/a;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object p0, p0, Lcom/bumptech/glide/manager/l;->aa:Lcom/bumptech/glide/manager/a;

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/a;->onStop()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/bumptech/glide/manager/l;->Oj()Landroid/app/Fragment;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
