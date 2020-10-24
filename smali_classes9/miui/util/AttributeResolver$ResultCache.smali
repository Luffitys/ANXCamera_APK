.class Lmiui/util/AttributeResolver$ResultCache;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mContext:Ljava/lang/ref/WeakReference;

.field public final mResult:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/util/AttributeResolver$ResultCache;->mContext:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lmiui/util/AttributeResolver$ResultCache;->mResult:Z

    return-void
.end method
