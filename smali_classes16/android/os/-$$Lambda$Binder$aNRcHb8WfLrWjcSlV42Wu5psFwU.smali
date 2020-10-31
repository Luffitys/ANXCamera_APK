.class public final synthetic Landroid/os/-$$Lambda$Binder$aNRcHb8WfLrWjcSlV42Wu5psFwU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Landroid/os/-$$Lambda$Binder$aNRcHb8WfLrWjcSlV42Wu5psFwU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/-$$Lambda$Binder$aNRcHb8WfLrWjcSlV42Wu5psFwU;

    invoke-direct {v0}, Landroid/os/-$$Lambda$Binder$aNRcHb8WfLrWjcSlV42Wu5psFwU;-><init>()V

    sput-object v0, Landroid/os/-$$Lambda$Binder$aNRcHb8WfLrWjcSlV42Wu5psFwU;->INSTANCE:Landroid/os/-$$Lambda$Binder$aNRcHb8WfLrWjcSlV42Wu5psFwU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Landroid/os/Binder;->lambda$static$0()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
