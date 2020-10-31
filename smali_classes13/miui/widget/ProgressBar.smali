.class public Lmiui/widget/ProgressBar;
.super Landroid/widget/ProgressBar;
.source "ProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mDelegate:Lcom/miui/internal/widget/ProgressBarDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lmiui/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lmiui/widget/ProgressBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/miui/internal/widget/ProgressBarDelegate;->postConstruct(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private declared-synchronized getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/widget/ProgressBar;->mDelegate:Lcom/miui/internal/widget/ProgressBarDelegate;

    if-nez v0, :cond_d

    const-class v0, Landroid/widget/ProgressBar;

    invoke-static {p0, v0}, Lcom/miui/internal/widget/ProgressBarDelegate;->create(Landroid/widget/ProgressBar;Ljava/lang/Class;)Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/ProgressBar;->mDelegate:Lcom/miui/internal/widget/ProgressBarDelegate;

    :cond_d
    iget-object v0, p0, Lmiui/widget/ProgressBar;->mDelegate:Lcom/miui/internal/widget/ProgressBarDelegate;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getProgressMaskDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-direct {p0}, Lmiui/widget/ProgressBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/widget/ProgressBarDelegate;->getProgressMaskDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    invoke-direct {p0}, Lmiui/widget/ProgressBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/widget/ProgressBarDelegate;->onSizeChanged(IIII)V

    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lmiui/widget/ProgressBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setIndeterminate(Z)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-direct {p0}, Lmiui/widget/ProgressBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-direct {p0}, Lmiui/widget/ProgressBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public declared-synchronized setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lmiui/widget/ProgressBar;->getDelegate()Lcom/miui/internal/widget/ProgressBarDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/widget/ProgressBarDelegate;->setProgressMaskDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
