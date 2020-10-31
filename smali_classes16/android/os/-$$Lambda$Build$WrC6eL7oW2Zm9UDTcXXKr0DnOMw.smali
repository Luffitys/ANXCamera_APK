.class public final synthetic Landroid/os/-$$Lambda$Build$WrC6eL7oW2Zm9UDTcXXKr0DnOMw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/os/-$$Lambda$Build$WrC6eL7oW2Zm9UDTcXXKr0DnOMw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/-$$Lambda$Build$WrC6eL7oW2Zm9UDTcXXKr0DnOMw;

    invoke-direct {v0}, Landroid/os/-$$Lambda$Build$WrC6eL7oW2Zm9UDTcXXKr0DnOMw;-><init>()V

    sput-object v0, Landroid/os/-$$Lambda$Build$WrC6eL7oW2Zm9UDTcXXKr0DnOMw;->INSTANCE:Landroid/os/-$$Lambda$Build$WrC6eL7oW2Zm9UDTcXXKr0DnOMw;

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

    invoke-static {p1}, Landroid/os/Build;->lambda$joinListOrElse$0(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
