.class public final synthetic Landroid/content/pm/-$$Lambda$B12dZLpdwpXn89QSesmkaZjD72Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/content/pm/-$$Lambda$B12dZLpdwpXn89QSesmkaZjD72Q;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/-$$Lambda$B12dZLpdwpXn89QSesmkaZjD72Q;

    invoke-direct {v0}, Landroid/content/pm/-$$Lambda$B12dZLpdwpXn89QSesmkaZjD72Q;-><init>()V

    sput-object v0, Landroid/content/pm/-$$Lambda$B12dZLpdwpXn89QSesmkaZjD72Q;->INSTANCE:Landroid/content/pm/-$$Lambda$B12dZLpdwpXn89QSesmkaZjD72Q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/content/pm/PackageInstaller$SessionCallback;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageInstaller$SessionCallback;->onBadgingChanged(I)V

    return-void
.end method
