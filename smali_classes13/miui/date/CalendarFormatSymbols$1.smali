.class Lmiui/date/CalendarFormatSymbols$1;
.super Lmiui/util/SoftReferenceSingleton;
.source "CalendarFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/date/CalendarFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SoftReferenceSingleton<",
        "Lmiui/date/CalendarFormatSymbols;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiui/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInstance()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lmiui/date/CalendarFormatSymbols$1;->createInstance()Lmiui/date/CalendarFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method protected createInstance()Lmiui/date/CalendarFormatSymbols;
    .registers 2

    new-instance v0, Lmiui/date/CalendarFormatSymbols;

    invoke-direct {v0}, Lmiui/date/CalendarFormatSymbols;-><init>()V

    return-object v0
.end method
