.class public final synthetic Landroid/media/-$$Lambda$kJ3hCZUGWrnpcHbziUcLGUyS8YA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/media/-$$Lambda$kJ3hCZUGWrnpcHbziUcLGUyS8YA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/-$$Lambda$kJ3hCZUGWrnpcHbziUcLGUyS8YA;

    invoke-direct {v0}, Landroid/media/-$$Lambda$kJ3hCZUGWrnpcHbziUcLGUyS8YA;-><init>()V

    sput-object v0, Landroid/media/-$$Lambda$kJ3hCZUGWrnpcHbziUcLGUyS8YA;->INSTANCE:Landroid/media/-$$Lambda$kJ3hCZUGWrnpcHbziUcLGUyS8YA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    check-cast p1, Landroid/media/MediaRoute2ProviderService;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    check-cast p3, Ljava/lang/String;

    check-cast p4, Ljava/lang/String;

    check-cast p5, Landroid/os/Bundle;

    move-object p0, p1

    move-wide p1, v0

    invoke-virtual/range {p0 .. p5}, Landroid/media/MediaRoute2ProviderService;->onCreateSession(JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
