.class public final synthetic Landroid/hardware/radio/-$$Lambda$TunerAdapter$St9hluCzvLWs9wyE7kDX24NpwJQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/hardware/radio/ProgramList$OnCloseListener;


# static fields
.field public static final synthetic INSTANCE:Landroid/hardware/radio/-$$Lambda$TunerAdapter$St9hluCzvLWs9wyE7kDX24NpwJQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/radio/-$$Lambda$TunerAdapter$St9hluCzvLWs9wyE7kDX24NpwJQ;

    invoke-direct {v0}, Landroid/hardware/radio/-$$Lambda$TunerAdapter$St9hluCzvLWs9wyE7kDX24NpwJQ;-><init>()V

    sput-object v0, Landroid/hardware/radio/-$$Lambda$TunerAdapter$St9hluCzvLWs9wyE7kDX24NpwJQ;->INSTANCE:Landroid/hardware/radio/-$$Lambda$TunerAdapter$St9hluCzvLWs9wyE7kDX24NpwJQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClose()V
    .registers 1

    invoke-static {}, Landroid/hardware/radio/TunerAdapter;->lambda$getDynamicProgramList$2()V

    return-void
.end method
