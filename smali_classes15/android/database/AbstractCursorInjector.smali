.class final Landroid/database/AbstractCursorInjector;
.super Ljava/lang/Object;
.source "AbstractCursorInjector.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static before_moveToPosition(Landroid/database/AbstractCursor;I)V
    .registers 4

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_7

    return-void

    :cond_7
    if-gez p1, :cond_a

    return-void

    :cond_a
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    if-ne p1, v1, :cond_f

    return-void

    :cond_f
    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-virtual {p0, v1, p1}, Landroid/database/AbstractCursor;->onMove(II)Z

    return-void
.end method

.method public static calibRowCountForReadRow(Landroid/database/AbstractCursor;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/database/AbstractCursorInjector;->before_moveToPosition(Landroid/database/AbstractCursor;I)V

    return-void
.end method

.method public static checkPosition(Landroid/database/AbstractCursor;I)Z
    .registers 4

    invoke-virtual {p0}, Landroid/database/AbstractCursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_a

    iput v0, p0, Landroid/database/AbstractCursor;->mPos:I

    const/4 v1, 0x0

    return v1

    :cond_a
    const/4 v1, 0x1

    return v1
.end method
