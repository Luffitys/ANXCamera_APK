.class public final synthetic Landroid/app/admin/-$$Lambda$pWaRScwKTZTgGW4Wa_v5R_pKBDU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/app/admin/-$$Lambda$pWaRScwKTZTgGW4Wa_v5R_pKBDU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/admin/-$$Lambda$pWaRScwKTZTgGW4Wa_v5R_pKBDU;

    invoke-direct {v0}, Landroid/app/admin/-$$Lambda$pWaRScwKTZTgGW4Wa_v5R_pKBDU;-><init>()V

    sput-object v0, Landroid/app/admin/-$$Lambda$pWaRScwKTZTgGW4Wa_v5R_pKBDU;->INSTANCE:Landroid/app/admin/-$$Lambda$pWaRScwKTZTgGW4Wa_v5R_pKBDU;

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

    check-cast p1, Ljava/util/concurrent/CompletableFuture;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
