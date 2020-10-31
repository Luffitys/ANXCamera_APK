.class public final synthetic Landroid/app/role/-$$Lambda$Z0BwIRmLFQVA4XrF_I5nxvuecWE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/app/role/-$$Lambda$Z0BwIRmLFQVA4XrF_I5nxvuecWE;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/role/-$$Lambda$Z0BwIRmLFQVA4XrF_I5nxvuecWE;

    invoke-direct {v0}, Landroid/app/role/-$$Lambda$Z0BwIRmLFQVA4XrF_I5nxvuecWE;-><init>()V

    sput-object v0, Landroid/app/role/-$$Lambda$Z0BwIRmLFQVA4XrF_I5nxvuecWE;->INSTANCE:Landroid/app/role/-$$Lambda$Z0BwIRmLFQVA4XrF_I5nxvuecWE;

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

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Landroid/app/role/IRoleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/role/IRoleController;

    move-result-object p1

    return-object p1
.end method
