.class public final synthetic Landroid/app/-$$Lambda$NotificationHistory$IawnrvjT3DfA_k-PePr01d9fBSQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Landroid/app/-$$Lambda$NotificationHistory$IawnrvjT3DfA_k-PePr01d9fBSQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/app/-$$Lambda$NotificationHistory$IawnrvjT3DfA_k-PePr01d9fBSQ;

    invoke-direct {v0}, Landroid/app/-$$Lambda$NotificationHistory$IawnrvjT3DfA_k-PePr01d9fBSQ;-><init>()V

    sput-object v0, Landroid/app/-$$Lambda$NotificationHistory$IawnrvjT3DfA_k-PePr01d9fBSQ;->INSTANCE:Landroid/app/-$$Lambda$NotificationHistory$IawnrvjT3DfA_k-PePr01d9fBSQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroid/app/NotificationHistory$HistoricalNotification;

    check-cast p2, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-static {p1, p2}, Landroid/app/NotificationHistory;->lambda$addNotificationsToWrite$0(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/app/NotificationHistory$HistoricalNotification;)I

    move-result p1

    return p1
.end method
