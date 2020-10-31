.class Lmiui/date/Holidays$HolidaysSingleton$1;
.super Ljava/lang/Object;
.source "Holidays.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/date/Holidays$HolidaysSingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    # getter for: Lmiui/date/Holidays;->INSTANCE:Lmiui/util/SoftReferenceSingleton;
    invoke-static {}, Lmiui/date/Holidays;->access$100()Lmiui/util/SoftReferenceSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/Holidays;

    invoke-static {}, Lcom/miui/internal/util/DeviceHelper;->getRegion()Ljava/lang/String;

    move-result-object v1

    # invokes: Lmiui/date/Holidays;->setCountry(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lmiui/date/Holidays;->access$200(Lmiui/date/Holidays;Ljava/lang/String;)V

    return-void
.end method
