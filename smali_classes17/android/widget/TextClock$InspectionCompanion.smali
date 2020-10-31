.class public final Landroid/widget/TextClock$InspectionCompanion;
.super Ljava/lang/Object;
.source "TextClock$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/TextClock;",
        ">;"
    }
.end annotation


# instance fields
.field private mFormat12HourId:I

.field private mFormat24HourId:I

.field private mIs24HourModeEnabledId:I

.field private mPropertiesMapped:Z

.field private mTimeZoneId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextClock$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4

    const-string v0, "format12Hour"

    const v1, 0x10103ca

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextClock$InspectionCompanion;->mFormat12HourId:I

    const-string v0, "format24Hour"

    const v1, 0x10103cb

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextClock$InspectionCompanion;->mFormat24HourId:I

    const-string v0, "is24HourModeEnabled"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextClock$InspectionCompanion;->mIs24HourModeEnabledId:I

    const-string/jumbo v0, "timeZone"

    const v1, 0x10103cc

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/TextClock$InspectionCompanion;->mTimeZoneId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/widget/TextClock;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/widget/TextClock$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_29

    iget v0, p0, Landroid/widget/TextClock$InspectionCompanion;->mFormat12HourId:I

    invoke-virtual {p1}, Landroid/widget/TextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextClock$InspectionCompanion;->mFormat24HourId:I

    invoke-virtual {p1}, Landroid/widget/TextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextClock$InspectionCompanion;->mIs24HourModeEnabledId:I

    invoke-virtual {p1}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextClock$InspectionCompanion;->mTimeZoneId:I

    invoke-virtual {p1}, Landroid/widget/TextClock;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    return-void

    :cond_29
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/widget/TextClock;

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextClock$InspectionCompanion;->readProperties(Landroid/widget/TextClock;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
