.class public final synthetic Landroid/media/audiopolicy/-$$Lambda$AudioPolicy$-ztOT0FT3tzGMUr4lm1gv6dBE4c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/media/audiopolicy/-$$Lambda$AudioPolicy$-ztOT0FT3tzGMUr4lm1gv6dBE4c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/audiopolicy/-$$Lambda$AudioPolicy$-ztOT0FT3tzGMUr4lm1gv6dBE4c;

    invoke-direct {v0}, Landroid/media/audiopolicy/-$$Lambda$AudioPolicy$-ztOT0FT3tzGMUr4lm1gv6dBE4c;-><init>()V

    sput-object v0, Landroid/media/audiopolicy/-$$Lambda$AudioPolicy$-ztOT0FT3tzGMUr4lm1gv6dBE4c;->INSTANCE:Landroid/media/audiopolicy/-$$Lambda$AudioPolicy$-ztOT0FT3tzGMUr4lm1gv6dBE4c;

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

    check-cast p1, Landroid/media/audiopolicy/AudioMix;

    invoke-static {p1}, Landroid/media/audiopolicy/AudioPolicy;->lambda$isLoopbackRenderPolicy$0(Landroid/media/audiopolicy/AudioMix;)Z

    move-result p1

    return p1
.end method
