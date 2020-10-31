.class public final synthetic Landroid/content/pm/-$$Lambda$T1UQAuePWRRmVQ1KzTyMAktZUPM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/content/pm/-$$Lambda$T1UQAuePWRRmVQ1KzTyMAktZUPM;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/pm/-$$Lambda$T1UQAuePWRRmVQ1KzTyMAktZUPM;

    invoke-direct {v0}, Landroid/content/pm/-$$Lambda$T1UQAuePWRRmVQ1KzTyMAktZUPM;-><init>()V

    sput-object v0, Landroid/content/pm/-$$Lambda$T1UQAuePWRRmVQ1KzTyMAktZUPM;->INSTANCE:Landroid/content/pm/-$$Lambda$T1UQAuePWRRmVQ1KzTyMAktZUPM;

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

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageInstaller$SessionCallback;->onActiveChanged(IZ)V

    return-void
.end method
