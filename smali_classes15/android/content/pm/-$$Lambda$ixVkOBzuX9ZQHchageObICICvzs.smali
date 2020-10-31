.class public final synthetic Landroid/content/pm/-$$Lambda$ixVkOBzuX9ZQHchageObICICvzs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/content/pm/-$$Lambda$ixVkOBzuX9ZQHchageObICICvzs;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/-$$Lambda$ixVkOBzuX9ZQHchageObICICvzs;

    invoke-direct {v0}, Landroid/content/pm/-$$Lambda$ixVkOBzuX9ZQHchageObICICvzs;-><init>()V

    sput-object v0, Landroid/content/pm/-$$Lambda$ixVkOBzuX9ZQHchageObICICvzs;->INSTANCE:Landroid/content/pm/-$$Lambda$ixVkOBzuX9ZQHchageObICICvzs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/util/List;

    check-cast p4, Landroid/os/UserHandle;

    invoke-interface {p1, p2, p3, p4}, Landroid/content/pm/LauncherApps$ShortcutChangeCallback;->onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    return-void
.end method
