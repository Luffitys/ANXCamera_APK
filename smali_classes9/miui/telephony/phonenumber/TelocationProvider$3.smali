.class Lmiui/telephony/phonenumber/TelocationProvider$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;


# instance fields
.field final synthetic this$0:Lmiui/telephony/phonenumber/TelocationProvider;


# direct methods
.method constructor <init>(Lmiui/telephony/phonenumber/TelocationProvider;)V
    .locals 0

    iput-object p1, p0, Lmiui/telephony/phonenumber/TelocationProvider$3;->this$0:Lmiui/telephony/phonenumber/TelocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadRaw([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiui/telephony/phonenumber/TelocationProvider$3;->this$0:Lmiui/telephony/phonenumber/TelocationProvider;

    invoke-static {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->access$200(Lmiui/telephony/phonenumber/TelocationProvider;)Ljava/util/HashSet;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
