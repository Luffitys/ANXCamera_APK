.class public final synthetic Landroid/content/res/-$$Lambda$Resources$4msWUw7LKsgLexLZjIfWa4oguq4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/content/res/-$$Lambda$Resources$4msWUw7LKsgLexLZjIfWa4oguq4;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/res/-$$Lambda$Resources$4msWUw7LKsgLexLZjIfWa4oguq4;

    invoke-direct {v0}, Landroid/content/res/-$$Lambda$Resources$4msWUw7LKsgLexLZjIfWa4oguq4;-><init>()V

    sput-object v0, Landroid/content/res/-$$Lambda$Resources$4msWUw7LKsgLexLZjIfWa4oguq4;->INSTANCE:Landroid/content/res/-$$Lambda$Resources$4msWUw7LKsgLexLZjIfWa4oguq4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Landroid/content/res/Resources;->lambda$newTheme$0(Ljava/lang/ref/WeakReference;)Z

    move-result p1

    return p1
.end method
