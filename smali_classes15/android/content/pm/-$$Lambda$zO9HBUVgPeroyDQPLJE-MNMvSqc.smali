.class public final synthetic Landroid/content/pm/-$$Lambda$zO9HBUVgPeroyDQPLJE-MNMvSqc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/content/pm/-$$Lambda$zO9HBUVgPeroyDQPLJE-MNMvSqc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/-$$Lambda$zO9HBUVgPeroyDQPLJE-MNMvSqc;

    invoke-direct {v0}, Landroid/content/pm/-$$Lambda$zO9HBUVgPeroyDQPLJE-MNMvSqc;-><init>()V

    sput-object v0, Landroid/content/pm/-$$Lambda$zO9HBUVgPeroyDQPLJE-MNMvSqc;->INSTANCE:Landroid/content/pm/-$$Lambda$zO9HBUVgPeroyDQPLJE-MNMvSqc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/content/pm/PackageInstaller$SessionCallback;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageInstaller$SessionCallback;->onFinished(IZ)V

    return-void
.end method
