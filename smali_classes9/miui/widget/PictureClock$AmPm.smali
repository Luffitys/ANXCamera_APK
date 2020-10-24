.class Lmiui/widget/PictureClock$AmPm;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/miui/internal/R$id;->am_pm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmiui/widget/PictureClock$AmPm;->mAmPm:Landroid/widget/TextView;

    invoke-static {}, Lmiui/date/CalendarFormatSymbols;->getDefault()Lmiui/date/CalendarFormatSymbols;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/date/CalendarFormatSymbols;->getAmPms()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lmiui/widget/PictureClock$AmPm;->mAmString:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Lmiui/widget/PictureClock$AmPm;->mPmString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .locals 1

    iget-object v0, p0, Lmiui/widget/PictureClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lmiui/widget/PictureClock$AmPm;->mAmString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lmiui/widget/PictureClock$AmPm;->mPmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method setShowAmPm(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/widget/PictureClock$AmPm;->mAmPm:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method
