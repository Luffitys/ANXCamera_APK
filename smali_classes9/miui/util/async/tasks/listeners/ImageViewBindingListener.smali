.class public Lmiui/util/async/tasks/listeners/ImageViewBindingListener;
.super Lmiui/util/async/tasks/listeners/BaseTaskListener;
.source ""


# static fields
.field private static final ALL_LISTENERS:Ljava/util/LinkedHashSet;


# instance fields
.field private mCurrentTask:Ljava/lang/ref/WeakReference;

.field private mError:Landroid/graphics/drawable/Drawable;

.field private final mImageView:Ljava/lang/ref/WeakReference;

.field private mPlaceHolder:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->ALL_LISTENERS:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    invoke-direct {p0}, Lmiui/util/async/tasks/listeners/BaseTaskListener;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private isSameImageView(Lmiui/util/async/tasks/listeners/ImageViewBindingListener;)Z
    .locals 0

    iget-object p0, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final getImageView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public onException(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Exception;)V
    .locals 0

    iget-object p1, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mError:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onFinalize(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .locals 0

    sget-object p1, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->ALL_LISTENERS:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, p0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPrepare(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;)V
    .locals 2

    iget-object p1, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mCurrentTask:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/util/async/Task;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiui/util/async/Task;->cancel()V

    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mCurrentTask:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    sget-object p2, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->ALL_LISTENERS:Ljava/util/LinkedHashSet;

    invoke-virtual {p2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;

    if-eq v0, p0, :cond_1

    invoke-direct {p0, v0}, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->isSameImageView(Lmiui/util/async/tasks/listeners/ImageViewBindingListener;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, v0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mCurrentTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/util/async/Task;

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lmiui/util/async/Task;->cancel()V

    :cond_3
    sget-object p1, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->ALL_LISTENERS:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mPlaceHolder:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mPlaceHolder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public onResult(Lmiui/util/async/TaskManager;Lmiui/util/async/Task;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_3

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const/4 p2, 0x0

    const/4 v1, 0x1

    aput-object p2, p1, v1

    aget-object p2, p1, v0

    if-nez p2, :cond_1

    instance-of p1, p3, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    move-object p1, p3

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_0
    move-object p1, p3

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    instance-of v0, p3, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, p3

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, p2, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v0, p1, v1

    goto :goto_0

    :cond_2
    move-object v0, p3

    check-cast v0, Landroid/graphics/drawable/Drawable;

    aput-object v0, p1, v1

    :goto_0
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 p0, 0x10e0000

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_3
    :goto_1
    return-object p3
.end method

.method public setErrorDrawable(Landroid/graphics/drawable/Drawable;)Lmiui/util/async/tasks/listeners/ImageViewBindingListener;
    .locals 0

    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mError:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setPlaceHolderDrawable(Landroid/graphics/drawable/Drawable;)Lmiui/util/async/tasks/listeners/ImageViewBindingListener;
    .locals 0

    iput-object p1, p0, Lmiui/util/async/tasks/listeners/ImageViewBindingListener;->mPlaceHolder:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
