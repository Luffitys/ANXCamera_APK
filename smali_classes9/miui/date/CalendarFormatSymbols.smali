.class public Lmiui/date/CalendarFormatSymbols;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final INSTANCE:Lmiui/util/SoftReferenceSingleton;


# instance fields
.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiui/date/CalendarFormatSymbols$1;

    invoke-direct {v0}, Lmiui/date/CalendarFormatSymbols$1;-><init>()V

    sput-object v0, Lmiui/date/CalendarFormatSymbols;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lmiui/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public static getDefault()Lmiui/date/CalendarFormatSymbols;
    .locals 1

    sget-object v0, Lmiui/date/CalendarFormatSymbols;->INSTANCE:Lmiui/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiui/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/date/CalendarFormatSymbols;

    return-object v0
.end method


# virtual methods
.method public getAmPms()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lmiui/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/miui/internal/R$array;->am_pms:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChineseDays()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lmiui/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/miui/internal/R$array;->chinese_days:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChineseDigits()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lmiui/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/miui/internal/R$array;->chinese_digits:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChineseLeapMonths()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lmiui/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/miui/internal/R$array;->chinese_leap_months:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChineseMonths()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lmiui/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/miui/internal/R$array;->chinese_months:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChineseSymbolAnimals()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lmiui/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/miui/internal/R$array;->chinese_symbol_animals:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDetailedAmPms()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lmiui/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/miui/internal/R$array;->detailed_am_pms:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEarthlyBranches()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lmiui/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/miui/internal/R$array;->earthly_branches:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEras()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lmiui/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/miui/internal/R$array;->eras:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHeavenlyStems()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lmiui/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/miui/internal/R$array;->heavenly_stems:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getMonths()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lmiui/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/miui/internal/R$array;->months:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShortMonths()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lmiui/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/miui/internal/R$array;->months_short:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShortWeekDays()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lmiui/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/miui/internal/R$array;->week_days_short:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShortestMonths()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lmiui/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/miui/internal/R$array;->months_shortest:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShortestWeekDays()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lmiui/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/miui/internal/R$array;->week_days_shortest:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSolarTerms()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lmiui/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/miui/internal/R$array;->solar_terms:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWeekDays()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lmiui/date/CalendarFormatSymbols;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/miui/internal/R$array;->week_days:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
