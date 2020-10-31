.class public final synthetic Landroid/media/-$$Lambda$Jl1VWT2dPpodkj8vkFOye7iVD0Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/media/-$$Lambda$Jl1VWT2dPpodkj8vkFOye7iVD0Y;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/-$$Lambda$Jl1VWT2dPpodkj8vkFOye7iVD0Y;

    invoke-direct {v0}, Landroid/media/-$$Lambda$Jl1VWT2dPpodkj8vkFOye7iVD0Y;-><init>()V

    sput-object v0, Landroid/media/-$$Lambda$Jl1VWT2dPpodkj8vkFOye7iVD0Y;->INSTANCE:Landroid/media/-$$Lambda$Jl1VWT2dPpodkj8vkFOye7iVD0Y;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/media/MediaRoute2Info;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
