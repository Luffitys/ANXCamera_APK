.class public final synthetic Landroid/companion/-$$Lambda$OThxsns9MAD5QsKURFQAFbt-3qc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Landroid/companion/-$$Lambda$OThxsns9MAD5QsKURFQAFbt-3qc;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/companion/-$$Lambda$OThxsns9MAD5QsKURFQAFbt-3qc;

    invoke-direct {v0}, Landroid/companion/-$$Lambda$OThxsns9MAD5QsKURFQAFbt-3qc;-><init>()V

    sput-object v0, Landroid/companion/-$$Lambda$OThxsns9MAD5QsKURFQAFbt-3qc;->INSTANCE:Landroid/companion/-$$Lambda$OThxsns9MAD5QsKURFQAFbt-3qc;

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

    check-cast p1, Landroid/companion/CompanionDeviceManager$Callback;

    check-cast p2, Landroid/content/IntentSender;

    invoke-virtual {p1, p2}, Landroid/companion/CompanionDeviceManager$Callback;->onDeviceFound(Landroid/content/IntentSender;)V

    return-void
.end method
