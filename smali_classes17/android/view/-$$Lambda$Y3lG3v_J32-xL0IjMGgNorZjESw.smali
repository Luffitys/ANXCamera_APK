.class public final synthetic Landroid/view/-$$Lambda$Y3lG3v_J32-xL0IjMGgNorZjESw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Landroid/view/-$$Lambda$Y3lG3v_J32-xL0IjMGgNorZjESw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/-$$Lambda$Y3lG3v_J32-xL0IjMGgNorZjESw;

    invoke-direct {v0}, Landroid/view/-$$Lambda$Y3lG3v_J32-xL0IjMGgNorZjESw;-><init>()V

    sput-object v0, Landroid/view/-$$Lambda$Y3lG3v_J32-xL0IjMGgNorZjESw;->INSTANCE:Landroid/view/-$$Lambda$Y3lG3v_J32-xL0IjMGgNorZjESw;

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

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method
