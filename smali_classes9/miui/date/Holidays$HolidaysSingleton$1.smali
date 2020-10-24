.class Lmiui/date/Holidays$HolidaysSingleton$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lmiui/date/Holidays;->access$100()Lmiui/util/SoftReferenceSingleton;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/date/Holidays;

    invoke-static {}, Lcom/miui/internal/util/DeviceHelper;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/date/Holidays;->access$200(Lmiui/date/Holidays;Ljava/lang/String;)V

    return-void
.end method
