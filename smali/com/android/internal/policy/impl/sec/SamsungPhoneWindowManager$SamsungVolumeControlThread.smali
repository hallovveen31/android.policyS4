.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;
.super Ljava/lang/Thread;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungVolumeControlThread"
.end annotation


# instance fields
.field private final DURATION_LONG_PRESS:J

.field private final DURATION_REPEAT:J

.field private mKeyCode:I

.field private mNeedControlCallVolume:Z

.field private mNeedControlMusicVolume:Z

.field private mNeedControlRadioVolume:Z

.field private mNeedToRun:Z

.field private mSleepDuration:J

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2973
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2979
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlMusicVolume:Z

    .line 2980
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlRadioVolume:Z

    .line 2981
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlCallVolume:Z

    .line 2983
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->DURATION_LONG_PRESS:J

    .line 2984
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->DURATION_REPEAT:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2973
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method controlCallAndRingingVolume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3115
    const/4 v2, 0x0

    .line 3116
    .local v2, needControlTelephonyVolume:Z
    const/4 v1, 0x0

    .line 3117
    .local v1, needControlTelephony2Volume:Z
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 3119
    .local v3, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_2

    .line 3121
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->isVoipCallActive()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v5

    if-nez v5, :cond_6

    .line 3123
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "SamsungVolumeControl"

    const-string v6, "in run(), now adjust call volume."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    :cond_1
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->handleVolume(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3125
    const/4 v2, 0x1

    .line 3135
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDualSIMMode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3136
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getTelephonyService2()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 3138
    .local v4, telephonyService2:Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_4

    .line 3140
    :try_start_1
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->isVoipCallActive()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v5

    if-nez v5, :cond_8

    .line 3142
    const-string v5, "SamsungVolumeControl"

    const-string v6, "in run(), now adjust call 2 volume."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    const/4 v5, 0x0

    iget v6, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->handleVolume(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3144
    const/4 v1, 0x1

    .line 3155
    .end local v4           #telephonyService2:Lcom/android/internal/telephony/ITelephony;
    :cond_4
    :goto_1
    if-nez v2, :cond_5

    if-eqz v1, :cond_9

    .line 3156
    :cond_5
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlCallVolume:Z

    .line 3160
    :goto_2
    return-void

    .line 3127
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 3129
    :catch_0
    move-exception v0

    .line 3130
    .local v0, ex:Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "SamsungVolumeControl"

    const-string v6, "ITelephony threw RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3131
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 3146
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v4       #telephonyService2:Lcom/android/internal/telephony/ITelephony;
    :cond_8
    const/4 v1, 0x0

    goto :goto_1

    .line 3148
    :catch_1
    move-exception v0

    .line 3149
    .restart local v0       #ex:Landroid/os/RemoteException;
    const-string v5, "SamsungVolumeControl"

    const-string v6, "ITelephony2 threw RemoteException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3150
    const/4 v1, 0x0

    goto :goto_1

    .line 3158
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v4           #telephonyService2:Lcom/android/internal/telephony/ITelephony;
    :cond_9
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlCallVolume:Z

    goto :goto_2
.end method

.method controlFMRadioVolume()V
    .locals 2

    .prologue
    .line 3105
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->isFMActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3106
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungVolumeControl"

    const-string v1, "in run(), now adjust FM radio volume."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    :cond_0
    const/16 v0, 0xa

    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->handleVolume(II)V

    .line 3108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlRadioVolume:Z

    .line 3112
    :goto_0
    return-void

    .line 3110
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlRadioVolume:Z

    goto :goto_0
.end method

.method controlMusicVolume()V
    .locals 2

    .prologue
    .line 3095
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOnFully()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3096
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungVolumeControl"

    const-string v1, "in run(), now adjust music volume."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    :cond_0
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->handleVolume(II)V

    .line 3098
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlMusicVolume:Z

    .line 3102
    :goto_0
    return-void

    .line 3100
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlMusicVolume:Z

    goto :goto_0
.end method

.method handleVolume(II)V
    .locals 7
    .parameter "stream"
    .parameter "keycode"

    .prologue
    .line 3055
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    .line 3056
    .local v1, audioManager:Landroid/media/AudioManager;
    if-nez v1, :cond_0

    .line 3092
    :goto_0
    return-void

    .line 3060
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/media/AudioManager;->dismissVolumePanel()V

    .line 3061
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 3077
    :sswitch_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p1, v5}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3089
    :catch_0
    move-exception v2

    .line 3090
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleVolume() threw Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3063
    .end local v2           #e:Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    const/16 v5, 0xa4

    invoke-direct {v3, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    .line 3065
    .local v3, muteEvent:Landroid/view/KeyEvent;
    const/high16 v4, -0x8000

    invoke-virtual {v1, v3, v4}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    goto :goto_0

    .line 3069
    .end local v3           #muteEvent:Landroid/view/KeyEvent;
    :sswitch_2
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    const/16 v5, 0xf3

    invoke-direct {v0, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    .line 3071
    .local v0, JogEvent:Landroid/view/KeyEvent;
    const/high16 v4, -0x8000

    invoke-virtual {v1, v0, v4}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    goto :goto_0

    .line 3083
    .end local v0           #JogEvent:Landroid/view/KeyEvent;
    :sswitch_3
    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p1, v5}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3061
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_3
        0xa4 -> :sswitch_1
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_3
        0xf1 -> :sswitch_3
        0xf2 -> :sswitch_0
        0xf3 -> :sswitch_2
    .end sparse-switch
.end method

.method isAdjustableVolumeKey(I)Z
    .locals 1
    .parameter "keycode"

    .prologue
    .line 3041
    sparse-switch p1, :sswitch_data_0

    .line 3050
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3048
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3041
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0xf1 -> :sswitch_0
        0xf2 -> :sswitch_0
    .end sparse-switch
.end method

.method isFMActive()Z
    .locals 3

    .prologue
    .line 3178
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 3179
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 3180
    const-string v1, "SamsungWindowManager"

    const-string v2, "isFMActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    const/4 v1, 0x0

    .line 3183
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isFMActive()Z

    move-result v1

    goto :goto_0
.end method

.method isMusicActive()Z
    .locals 3

    .prologue
    .line 3166
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 3167
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_0

    .line 3168
    const-string v1, "SamsungWindowManager"

    const-string v2, "isMusicActive: couldn\'t get AudioManager reference"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    const/4 v1, 0x0

    .line 3171
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    goto :goto_0
.end method

.method isVoipCallActive()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3187
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 3188
    .local v0, am:Landroid/media/AudioManager;
    if-nez v0, :cond_1

    .line 3189
    const-string v2, "SamsungWindowManager"

    const-string v3, "isVoipCallActive: couldn\'t get AudioManager reference"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    :cond_0
    :goto_0
    return v1

    .line 3192
    :cond_1
    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voice stream active = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/AudioManager;->isVoiceCallActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", record thread active = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    invoke-virtual {v0}, Landroid/media/AudioManager;->isVoiceCallActive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 3002
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3005
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->controlMusicVolume()V

    .line 3008
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->controlFMRadioVolume()V

    .line 3011
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->controlCallAndRingingVolume()V

    .line 3016
    :try_start_0
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3020
    :goto_1
    monitor-enter p0

    .line 3021
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlMusicVolume:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlRadioVolume:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedControlCallVolume:Z

    if-nez v0, :cond_0

    .line 3024
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3036
    :goto_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3038
    return-void

    .line 3027
    :cond_0
    :try_start_2
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedToRun:Z

    if-nez v0, :cond_1

    .line 3028
    monitor-exit p0

    goto :goto_2

    .line 3034
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3031
    :cond_1
    :try_start_3
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->DURATION_LONG_PRESS:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 3032
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    .line 3034
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 3017
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateInfo(IZZ)V
    .locals 2
    .parameter "keyCode"
    .parameter "down"
    .parameter "canceled"

    .prologue
    .line 2987
    monitor-enter p0

    .line 2990
    :try_start_0
    iput p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    .line 2991
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedToRun:Z

    .line 2992
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->DURATION_LONG_PRESS:J

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    .line 2994
    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->isAdjustableVolumeKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2995
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$SamsungVolumeControlThread;->mNeedToRun:Z

    .line 2997
    :cond_1
    monitor-exit p0

    .line 2998
    return-void

    .line 2997
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
