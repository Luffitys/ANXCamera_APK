.class Lmiui/date/Holidays$HolidaysSingleton;
.super Lmiui/util/SoftReferenceSingleton;
.source "Holidays.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/date/Holidays;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HolidaysSingleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SoftReferenceSingleton<",
        "Lmiui/date/Holidays;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/date/Holidays$HolidaysSingleton$1;

    invoke-direct {v0}, Lmiui/date/Holidays$HolidaysSingleton$1;-><init>()V

    invoke-static {v0}, Lmiui/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/date/Holidays$1;)V
    .registers 2

    invoke-direct {p0}, Lmiui/date/Holidays$HolidaysSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInstance()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lmiui/date/Holidays$HolidaysSingleton;->createInstance()Lmiui/date/Holidays;

    move-result-object v0

    return-object v0
.end method

.method protected createInstance()Lmiui/date/Holidays;
    .registers 3

    new-instance v0, Lmiui/date/Holidays;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiui/date/Holidays;-><init>(Lmiui/date/Holidays$1;)V

    return-object v0
.end method
