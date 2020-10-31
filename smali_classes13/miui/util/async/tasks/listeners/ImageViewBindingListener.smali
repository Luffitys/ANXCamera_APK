.class public Lmiui/util/async/tasks/listeners/ImageViewBindingListener;
.super Lmiui/util/async/tasks/listeners/BaseTaskListener;
.source "ImageViewBindingListener.java"


# static fields
.field private static final ALL_LISTENERS:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lmiui/util/async/tasks/listeners/ImageViewBindingListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentTask:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/util/async/Task<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mError:Landroid/graphics/drawable/Drawable;

.field private final mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaceHolder:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->ALL_LISTENERS:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 3

    invoke-direct {p0}, Lmiui/util/async/tasks/listeners/BaseTaskListener;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private isSameImageView(Lmiui/util/async/tasks/listeners/ImageViewBindingListener;)Z
    .registers 4

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method public final getImageView()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public onException(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Exception;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mError:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_13
    return-void
.end method

.method public onFinalize(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->ALL_LISTENERS:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPrepare(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mCurrentTask:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/Task;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lmiui/util/async/Task;->cancel()V

    :cond_f
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mCurrentTask:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    sget-object v1, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->ALL_LISTENERS:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;

    if-eq v2, p0, :cond_3b

    invoke-direct {p0, v2}, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->isSameImageView(Lmiui/util/async/tasks/listeners/ImageViewBindingListener;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v1, v2, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mCurrentTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lmiui/util/async/Task;

    goto :goto_3c

    :cond_3b
    goto :goto_1d

    :cond_3c
    :goto_3c
    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lmiui/util/async/Task;->cancel()V

    :cond_41
    sget-object v1, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->ALL_LISTENERS:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mPlaceHolder:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_59

    iget-object v1, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_59

    iget-object v2, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mPlaceHolder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_59
    return-void
.end method

.method public onResult(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/async/TaskManager;",
            "Lmiui/util/async/Task<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_5e

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v4, 0x1

    aput-object v2, v1, v4

    aget-object v2, v1, v3

    if-nez v2, :cond_2e

    instance-of v2, p3, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_27

    move-object v2, p3

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5e

    :cond_27
    move-object v2, p3

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5e

    :cond_2e
    invoke-static {}, Lcom/miui/internal/util/PackageConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    instance-of v3, p3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_45

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object v5, p3

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-direct {v3, v2, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v1, v4

    goto :goto_4a

    :cond_45
    move-object v3, p3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v4

    :goto_4a
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v4, 0x10e0000

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_5e
    :goto_5e
    return-object p3
.end method

.method public setErrorDrawable(Landroid/graphics/drawable/Drawable;)Lmiui/util/async/tasks/listeners/ImageViewBindingListener;
    .registers 2

    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mError:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)Lmiui/util/async/tasks/listeners/ImageViewBindingListener;
    .registers 2

    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mPlaceHolder:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
